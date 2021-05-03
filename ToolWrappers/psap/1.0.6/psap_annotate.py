from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Psap_Annotate_V0_1_0 = CommandToolBuilder(tool="psap_annotate", base_command=["psap", "annotate"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Path to peptide fasta file")), ToolInput(tag="in_labels", input_type=File(optional=True), prefix="--labels", doc=InputDocumentation(doc=".txt file with llps uniprot ids (positive training\nlabels)")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Output directory to store annotated data frame in .csv\nformat\n"))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output directory to store annotated data frame in .csv\nformat\n"))], container="quay.io/biocontainers/psap:1.0.6--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Psap_Annotate_V0_1_0().translate("wdl")

