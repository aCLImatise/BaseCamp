from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Proteindbmasses_Py_V0_1_0 = CommandToolBuilder(tool="proteinDBmasses.py", base_command=["proteinDBmasses.py"], inputs=[ToolInput(tag="in_abundancefile_protein_abundance", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="abundancefile   Protein abundance file. If not used, the script will just report the number of peptides and molecular weight of the proteins.")), ToolInput(tag="in_dynamicrange_simulation_specified", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="dynamic-range   Simulation of peptide intensity by using the peptide detectability dynamic range specified. If not used, there will not be any simulation")), ToolInput(tag="in_enzyme_enzyme_used", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="enzyme  Enzyme used for in-silico digestion (peptide counting). Options: trypsin, Asp-N, Arg-C, Chymotrypsin, Lys-C, Lys-N. Default: trypsin")), ToolInput(tag="in_peplength_minimum_peptide", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="pep-length      Minimum peptide length for the in-silico digestion. Default: 5")), ToolInput(tag="in_minpeptides_define_number", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="min-peptides    Define a minimum number of peptides to identify a protein. This must be completed with the -n option.")), ToolInput(tag="in_peptidesidentified_define_number", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="peptides-identified Define a number of identified peptides to estimate the number of proteins identified.")), ToolInput(tag="in_fast_a_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteindbmasses_Py_V0_1_0().translate("wdl", allow_empty_container=True)

