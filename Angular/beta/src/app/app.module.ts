import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { VistaPrincipalComponent } from './vista-principal/vista-principal.component';
import { PacientesPrincipalComponent } from './pacientes-principal/pacientes-principal.component';
import { ExpedientesComponent } from './pacientes-principal/expedientes/expedientes.component';

@NgModule({
  declarations: [
    AppComponent,
    VistaPrincipalComponent,
    PacientesPrincipalComponent,
    ExpedientesComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
