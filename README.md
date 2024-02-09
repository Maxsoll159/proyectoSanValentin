# React + Vite
This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.
Currently, two official plugins are available:
- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react/README.md) uses [Babel](https://babeljs.io/) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh


## Docker
The following are the steps to build the image with docker and execute it in the following way:

### Production

```
	docker build -t sanvalentine-prod:latest --target prod .
	docker run -p 80:80 sanvalentine-prod:latest
```
After deploying the application open [http://localhost/](http://localhost/)