from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Rnasamba_Classify_V0_1_0 = CommandToolBuilder(tool="rnasamba_classify", base_command=["rnasamba", "classify"], inputs=[ToolInput(tag="in_protein_fast_a", input_type=File(optional=True), prefix="--protein_fasta", doc=InputDocumentation(doc="output FASTA file containing translated sequences for\nthe predicted coding ORFs. (default: None)")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print the progress of the classification. 0 = silent,\n1 = current step. (default: 0)\n")), ToolInput(tag="in_output_file", input_type=String(), position=0, doc=InputDocumentation(doc="output TSV file containing the results of the")), ToolInput(tag="in_classification_dot", input_type=String(), position=1, doc=InputDocumentation(doc="fasta_file            input FASTA file containing transcript sequences.")), ToolInput(tag="in_weights", input_type=String(), position=2, doc=InputDocumentation(doc="input HDF5 file(s) containing weights of a trained\nRNAsamba network (if more than a file is provided, an\nensembling of the models will be performed)."))], outputs=[ToolOutput(tag="out_protein_fast_a", output_type=File(optional=True), selector=InputSelector(input_to_select="in_protein_fast_a", type_hint=File()), doc=OutputDocumentation(doc="output FASTA file containing translated sequences for\nthe predicted coding ORFs. (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnasamba_Classify_V0_1_0().translate("wdl", allow_empty_container=True)

