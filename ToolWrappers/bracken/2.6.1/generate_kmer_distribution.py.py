from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Generate_Kmer_Distribution_Py_V0_1_0 = CommandToolBuilder(tool="generate_kmer_distribution.py", base_command=["generate_kmer_distribution.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Kraken counts file for each genome mapped to the\noverall database.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file containing each classified taxonomy ID and\nthe kmer distributions of all genomes with this\nclassification.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file containing each classified taxonomy ID and\nthe kmer distributions of all genomes with this\nclassification.\n"))], container="quay.io/biocontainers/bracken:2.6.1--py38hed8969a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Kmer_Distribution_Py_V0_1_0().translate("wdl")

