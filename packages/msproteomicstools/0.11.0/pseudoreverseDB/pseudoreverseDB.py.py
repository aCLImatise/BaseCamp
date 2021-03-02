from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Pseudoreversedb_Py_V0_1_0 = CommandToolBuilder(tool="pseudoreverseDB.py", base_command=["pseudoreverseDB.py"], inputs=[ToolInput(tag="in_inputfasta_input_fasta", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="input.fasta input fasta file")), ToolInput(tag="in_outputfasta_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output.fasta output file with decoys"))], outputs=[ToolOutput(tag="out_outputfasta_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outputfasta_output_file", type_hint=File()), doc=OutputDocumentation(doc="output.fasta output file with decoys"))], container="quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pseudoreversedb_Py_V0_1_0().translate("wdl")

