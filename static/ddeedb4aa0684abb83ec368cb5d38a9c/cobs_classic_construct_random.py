from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cobs_Classic_Construct_Random_V0_1_0 = CommandToolBuilder(tool="cobs_classic_construct_random", base_command=["cobs", "classic-construct-random"], inputs=[ToolInput(tag="in_document_size", input_type=Boolean(optional=True), prefix="--document-size", doc=InputDocumentation(doc="number of random 31-mers in document, default: 1000000")), ToolInput(tag="in_num_documents", input_type=Boolean(optional=True), prefix="--num-documents", doc=InputDocumentation(doc="number of random documents in index, default: 10000")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="--seed", doc=InputDocumentation(doc="random seed")), ToolInput(tag="in_signature_size", input_type=Boolean(optional=True), prefix="--signature-size", doc=InputDocumentation(doc="number of bits of the signatures (vertical size),\ndefault: 2 Mi\n")), ToolInput(tag="in_out_file", input_type=File(), position=0, doc=InputDocumentation(doc="path to the output file"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="path to the output file"))], container="quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cobs_Classic_Construct_Random_V0_1_0().translate("wdl")

