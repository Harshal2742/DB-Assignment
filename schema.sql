CREATE TABLE "product" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "desc" text,
  "SKU" varchar,
  "category_id" int,
  "inventory_id" int,
  "price" decimal,
  "discount_id" int,
  "created_at" timestamp,
  "modified_at" timestamp,
  "deleted_at" timestamp
);

CREATE TABLE "product_category" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "desc" text,
  "created_at" timestamp,
  "modified_at" timestamp,
  "deleted_at" timestamp
);

CREATE TABLE "product_inventory" (
  "id" int PRIMARY KEY,
  "quantity" int,
  "created_at" timestamp,
  "modified_at" timestamp,
  "deleted_at" timestamp
);

CREATE TABLE "discount" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "desc" text,
  "discount_percent" decimal,
  "active" bool,
  "created_at" timestamp,
  "modified_at" timestamp,
  "deleted_at" timestamp
);

ALTER TABLE "product" ADD FOREIGN KEY ("category_id") REFERENCES "product_category" ("id");

ALTER TABLE "product" ADD FOREIGN KEY ("inventory_id") REFERENCES "product_inventory" ("id");

ALTER TABLE "product" ADD FOREIGN KEY ("discount_id") REFERENCES "discount" ("id");
