'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "967f441cac056efd27c86ab64acf19c9",
"assets/assets/fb.png": "99d1fa7e1c979cf303a62994daa5dc59",
"assets/assets/gh.png": "e3ada20785a2f8046a2ee0ba4b6e9084",
"assets/assets/ig.png": "2fa277552b620e8275a07a442ea8cd0f",
"assets/assets/img1.jpg": "67043764a7dfe3831eb20cab34ea00d3",
"assets/assets/img2.jpeg": "0d7c8483b38a84991c697c120de4d9f2",
"assets/assets/li.png": "6e154f80072e0f134105ec35599d74a6",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "5ab7c560fec6632b8784d6da5524f66d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "e29dd1d7b26e3f996c036238a447dfdb",
"/": "e29dd1d7b26e3f996c036238a447dfdb",
"main.dart.js": "55b1e5a04c1a6fc11ee6e2304d7f90cb",
"manifest.json": "ca4f9ca046456dbfead69c73bfea23f6"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
