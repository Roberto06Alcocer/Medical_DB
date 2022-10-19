import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ExpedientesComponent } from './pacientes-principal/expedientes/expedientes.component';
import { PacientesPrincipalComponent } from './pacientes-principal/pacientes-principal.component';
import { VistaPrincipalComponent } from './vista-principal/vista-principal.component';

const routes: Routes = [
  {path:'vista-principal', component:VistaPrincipalComponent},
  {path:'pacientes-principal', component:PacientesPrincipalComponent},
  {path:'expedientes', component:ExpedientesComponent},
  {path:'', redirectTo:'/vista-principal', pathMatch:'full'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
