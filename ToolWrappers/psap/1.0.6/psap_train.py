from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Psap_Train_V0_1_0 = CommandToolBuilder(tool="psap_train", base_command=["psap", "train"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Path to peptide fasta file")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Output directory to store trained RandomForest\nclassifier in json format")), ToolInput(tag="in_labels", input_type=File(optional=True), prefix="--labels", doc=InputDocumentation(doc=".txt file with llps uniprot ids (positive training\nlabels)\n"))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output directory to store trained RandomForest\nclassifier in json format"))], container="quay.io/biocontainers/psap:1.0.6--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Psap_Train_V0_1_0().translate("wdl")

