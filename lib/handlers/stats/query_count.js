'use strict';

module.exports = {
  get(req, reply) {
    reply({
      counts: [
        {
          name: '1',
          count: 578
        },
        {
          name: '2',
          count: 727
        },
              {
          name: '3',
          count: 511
        },
        {
          name: '4',
          count: 768
        },
        {
          name: '5',
          count: 478
        },
        {
          name: '6',
          count: 254
        },
        {
          name: '7',
          count: 873
        }
      ]
    });
  }
}
