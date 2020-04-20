# Game Central Station [Rails API]
This repo is provided as a starting place for App Search usability testing.

## System Requirements

|   | Version  | Install Instructions |
|---|----------|----------------------|
| Ruby  | 2.5.5  | [🔗`rbenv` &rarr;](https://github.com/rbenv/rbenv#installation)
| Rails  | 6.0.2  | `gem install rails`
| Bundler  | 2.0.2  | `gem install bundler`
| Node  | 10.15.3  | [🔗`brew install node`](https://nodejs.org/en/download/package-manager/)

## Getting Started

### 1. Clone the repo
```shell
$ git clone https://github.com/daveyholler/gcs_rails
$ cd gcs_rails
```

### 2. Install the gems
```shell
$ bundle install
```

### 3. Create the database and run migrations
```shell
$ rails db:create
$ rails db:migrate
```

### 4. Seed the database with 4,057 games from the seeds file — might take a quick minute
```shell
$ rails db:seed
```

### 5. Run the server
```shell
$ rails server
```

Once running, the application will serve at [localhost:4000](http://localhost:4000)

## The 'Games' endpoint

The games endpoint returns a `json` object at [localhost:4000/games](http://localhost:4000/games). The route accepts 3 separate optional URL parameters:

* `max` to set the max number of results returned
* `page` to set the offset of returned results
* `platform` to limit the results to a specific gaming platform

### Example query:
`http://localhost:4000/games?platform=XOne&max=2&page=1`

```json
{

    "_meta": {
        "totalCount": 4057,
        "totalPages": 2028,
        "currentPage": 1,
        "pageSize": 2
    },
    "games": [
        {
            "id": 118,
            "game_id": "grand-theft-auto-v-xone-2014",
            "name": "Grand Theft Auto V",
            "year": 2014,
            "platform": "XOne",
            "genre": "Action",
            "publisher": "Take-Two Interactive",
            "global_sales": 5,
            "critic_score": 97,
            "user_score": 7,
            "developer": "Rockstar North",
            "image_url": "https://media.rockstargames.com/rockstargames/img/global/news/upload/actual_1386036983.jpg",
            "created_at": "2020-04-20T18:00:26.682Z",
            "updated_at": "2020-04-20T18:00:26.682Z"
        },
        {
            "id": 127,
            "game_id": "call-of-duty-advanced-warfare-xone-2014",
            "name": "Call of Duty: Advanced Warfare",
            "year": 2014,
            "platform": "XOne",
            "genre": "Shooter",
            "publisher": "Activision",
            "global_sales": 5,
            "critic_score": 81,
            "user_score": 5,
            "developer": "Sledgehammer Games",
            "image_url": "https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/Advanced_Warfare.jpg/220px-Advanced_Warfare.jpg",
            "created_at": "2020-04-20T18:00:26.722Z",
            "updated_at": "2020-04-20T18:00:26.722Z"
        }
    ]

}
```
