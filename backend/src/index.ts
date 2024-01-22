import "reflect-metadata";

// console.log("hello");
import express, { Request, Response } from "express";
import { Ad } from "./types";
import sqlite from "sqlite3";
import db from "./db";

const app = express();
const port = 3000;
//const db = new sqlite3.Database("the_good_corner.sqlite");
/*const db1 = new sqlite3.Database("query.sqlite");*/

app.use(express.json());

app.get("/", (req: Request, res: Response) => {
  res.send("Hello sunshine!");
});
/*parler directement à la table sql*/
app.get("/ads", (req: Request, res: Response) => {
  /*
  db.all("SELECT * FROM ad", (err, rows) => {
    if (!err) res.send(rows);
    else {
      console.log(err);
      res.sendStatus(500);
    }
  });
  */
});

app.post("/ads", (req: Request, res: Response) => {
  /*
  const id = ads.length + 1;
  const newAd = { ...req.body, id, createdAt: new Date().toISOString() };

  console.log(newAd);
  ads.push(req.body);
  res.send("Request received, check the backend terminal");
});
*/
  /* Je me suis arrete là*/
  /*
  db.run(
    "INSERT INTO ad (title, description, owner, price, picture, location) VALUES($title, $description, $owner, $price, $picture, $location)",
    {
      $title: req.body.title,
      $description: req.body.description, // placehorlder
      $owner: req.body.owner,
      $price: req.body.price,
      $picture: req.body.picture,
      $location: req.body.location,
    }
  );
});

app.post("/ads", (req: Request, res: Response) => {
  db1.run(
    "INSERT INTO ad (title, description, owner, price, picture, location) VALUES($title, $description, $owner, $price, $picture, $location)",
    {
      $title: req.body.title,
      $description: req.body.description, // placehorlder
      $owner: req.body.owner,
      $price: req.body.price,
      $picture: req.body.picture,
      $location: req.body.location,
    }
  );
  */
});

app.delete("/ads/:id", (req, res) => {
  // /*
  // const idAdToDelete = parseInt(req.params.id, 10);
  // if (!ads.find((ad) => ad.id === idAdToDelete)) return res.sendStatus(404);
  // /* declarative way
  //  ads = ads.filter((ad) => ad.id !== idAdToDelete);*/
  // ads.splice(
  //   ads.findIndex((ad) => ad.id === idAdToDelete),
  //   1
  // );
  // res.sendStatus(204).send({ message: "ad deleted !" });
  //imperative way
});

// solution IA
// app.delete("/ads/:id", (req, res) => {
//   const idAdToDelete = parseInt(req.params.id, 10);
//   const adToDelete = ads.find((ad) => ad.id === idAdToDelete);

//   if (!adToDelete) {
//     res.sendStatus(404);
//   } else {
//     ads = ads.filter((ad) => ad.id !== idAdToDelete);
//     res.sendStatus(204);
//     res.json({ message: "ad deleted !" });
//   }
// });

app.patch("/ads/:id", (req, res) => {
  /*
  const idAdToUpdate = parseInt(req.params.id, 10);
  if (!ads.find((ad) => ad.id === idAdToUpdate)) return res.sendStatus(404);

  //imperative way

  const indexOfAdToUpdate = ads.findIndex((ad) => ad.id === idAdToUpdate);
  ads[indexOfAdToUpdate] = {
    ...ads[indexOfAdToUpdate],
    ...req.body,
  };
  res.send(ads[indexOfAdToUpdate]);
  */
});

app.listen(port, async () => {
  await db.initialize();
  console.log(`Example app listening on port ${port}`);
});
