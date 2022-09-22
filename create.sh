#!/bin/sh

# Installera Nuxt
npx nuxi init nuxt-app 
# Flytta nuxt-app till huvudkatalog
cd nuxt-app
mv * ../ && mv .* ../
cd ..
rm -r nuxt-app

# Installera Pinia
npm install @pinia/nuxt

# Installera GraphQL Client
npm install nuxt-graphql-client

# Installera Capacitor och Ionic
npm install nuxt-ionic -D
npm install @capacitor/ios
npm run build
npx @ionic/cli integrations enable capacitor
npx cap add ios 

# Installera Vitest
npm install -D vitest






# Kopiera NuxtConfig