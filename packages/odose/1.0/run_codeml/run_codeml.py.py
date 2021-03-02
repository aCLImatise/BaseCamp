from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Run_Codeml_Py_V0_1_0 = CommandToolBuilder(tool="run_codeml.py", base_command=["run_codeml.py"], inputs=[ToolInput(tag="in_genomes_a", input_type=File(optional=True), prefix="--genomes-a", doc=InputDocumentation(doc="file with GenBank Project IDs from complete genomes table on each line for taxon A")), ToolInput(tag="in_genomes_b", input_type=File(optional=True), prefix="--genomes-b", doc=InputDocumentation(doc="file with GenBank Project IDs from complete genomes table on each line for taxon B")), ToolInput(tag="in_sico_zip", input_type=File(optional=True), prefix="--sico-zip", doc=InputDocumentation(doc="archive of aligned & trimmed single copy orthologous (SICO) genes")), ToolInput(tag="in_code_ml_zip", input_type=File(optional=True), prefix="--codeml-zip", doc=InputDocumentation(doc="destination file path for archive of codeml output per SICO gene")), ToolInput(tag="in_dnds_stats", input_type=File(optional=True), prefix="--dnds-stats", doc=InputDocumentation(doc="destination file path for file with dN, dS & dN/dS values per SICO gene"))], outputs=[ToolOutput(tag="out_code_ml_zip", output_type=File(optional=True), selector=InputSelector(input_to_select="in_code_ml_zip", type_hint=File()), doc=OutputDocumentation(doc="destination file path for archive of codeml output per SICO gene"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Codeml_Py_V0_1_0().translate("wdl", allow_empty_container=True)

