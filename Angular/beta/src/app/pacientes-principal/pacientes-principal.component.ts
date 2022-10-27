import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-pacientes-principal',
  templateUrl: './pacientes-principal.component.html',
  styleUrls: ['./pacientes-principal.component.css']
})
export class PacientesPrincipalComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

  validpaciente = true;

  paciente(pat: string){
    if (pat == "Samuel"){
      this.validpaciente = false;
    }
    else{
      this.validpaciente = true;
    }
  }

}
