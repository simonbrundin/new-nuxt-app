#!/bin/sh

# Installera Nuxt
npx nuxi init nuxt-app 
# Flytta nuxt-app till huvudkatalog
cd nuxt-app
mv * ../ && mv .* ../
cd ..
rm -r nuxt-app