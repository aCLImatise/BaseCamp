from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Pypgatk_Cli_Ensembl_Check_V0_1_0 = CommandToolBuilder(tool="pypgatk_cli_ensembl_check", base_command=["pypgatk_cli", "ensembl-check"], inputs=[ToolInput(tag="in_config_file", input_type=String(optional=True), prefix="--config_file", doc=InputDocumentation(doc="Configuration to perform Ensembl database check")), ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input_fasta", doc=InputDocumentation(doc="input_fasta file to perform the translation")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output File")), ToolInput(tag="in_add_stop_codons", input_type=Boolean(optional=True), prefix="--add_stop_codons", doc=InputDocumentation(doc="If a stop codons is found, add a new protein with\nsuffix (_Codon_{num})")), ToolInput(tag="in_num_aa", input_type=Int(optional=True), prefix="--num_aa", doc=InputDocumentation(doc="Minimun number of aminoacids for a protein to be\nincluded in the database"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output File"))], container="quay.io/biocontainers/pypgatk:0.0.19--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pypgatk_Cli_Ensembl_Check_V0_1_0().translate("wdl")

