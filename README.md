# README
A toy rails api to explore setting up appointments endpoint


### Data model

```
customers
* id
* full_name
```

```
clients
* id
* email
```

```
appointments
* customer_id   foreign key
* client_id   foreign key
* start_at timestamps
* end_at timestamps
```

### Endpoint
`/appointments`

Sample response:

```
[
  {
    start_at: '11:00 am',
    end_at: '11:30 am'
    customer: {
      id: 1,
      full_name: 'Rami'
    },
    client: {
      id: 2,
      email: 'rami@test.com'
    }
  }, {
    # ...
  }
]
```

### New feature request
`/appointments?active=1`
Specifying active=1 on appointments endpoint should only return future appointments
