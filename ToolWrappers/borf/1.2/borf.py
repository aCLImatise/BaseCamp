from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Borf_V0_1_0 = CommandToolBuilder(tool="borf", base_command=["borf"], inputs=[ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output_path", doc=InputDocumentation(doc="path to write output files. [OUTPUT_PATH].pep and\n[OUTPUT_PATH].txt (default: input .fa file name)")), ToolInput(tag="in_strand", input_type=Boolean(optional=True), prefix="--strand", doc=InputDocumentation(doc="Predict orfs for both strands")), ToolInput(tag="in_all_orfs", input_type=Boolean(optional=True), prefix="--all_orfs", doc=InputDocumentation(doc="Return all ORFs for each sequence longer than the")), ToolInput(tag="in_upstream_incomplete_length", input_type=Int(optional=True), prefix="--upstream_incomplete_length", doc=InputDocumentation(doc="Minimum length (AA) of uninterupted sequence upstream\nof ORF to be included for incomplete_5prime\ntranscripts (default: 50)")), ToolInput(tag="in_batch_size", input_type=Int(optional=True), prefix="--batch_size", doc=InputDocumentation(doc="Number of fasta records to read in in each batch")), ToolInput(tag="in_force_overwrite", input_type=Boolean(optional=True), prefix="--force_overwrite", doc=InputDocumentation(doc="Force overwriting of output files?\n")), ToolInput(tag="in_l", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_cut_off", input_type=String(), position=0, doc=InputDocumentation(doc="-l ORF_LENGTH, --orf_length ORF_LENGTH"))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="path to write output files. [OUTPUT_PATH].pep and\n[OUTPUT_PATH].txt (default: input .fa file name)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Borf_V0_1_0().translate("wdl", allow_empty_container=True)

