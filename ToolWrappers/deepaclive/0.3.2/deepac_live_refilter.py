from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory, Boolean

Deepac_Live_Refilter_V0_1_0 = CommandToolBuilder(tool="deepac_live_refilter", base_command=["deepac-live", "refilter"], inputs=[ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--read-length", doc=InputDocumentation(doc="Expected read length")), ToolInput(tag="in_seq_cycles", input_type=String(optional=True), prefix="--seq-cycles", doc=InputDocumentation(doc="Comma-separated list of sequencing cycles to analyze.")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Format of temp files. bam or fasta.")), ToolInput(tag="in_barcodes", input_type=String(optional=True), prefix="--barcodes", doc=InputDocumentation(doc="Comma-separated list of barcodes of samples to\nanalyze. Default: 'undetermined'")), ToolInput(tag="in_threshold", input_type=String(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Classification threshold.")), ToolInput(tag="in_fast_a_input", input_type=Directory(optional=True), prefix="--fasta-input", doc=InputDocumentation(doc="Receiver input directory.")), ToolInput(tag="in_preds_input", input_type=String(optional=True), prefix="--preds-input", doc=InputDocumentation(doc="Comma-separated list of receiver output directories.")), ToolInput(tag="in_re_filter_output", input_type=Directory(optional=True), prefix="--refilter-output", doc=InputDocumentation(doc="Refilter output directory.")), ToolInput(tag="in_discard_neg", input_type=Boolean(optional=True), prefix="--discard-neg", doc=InputDocumentation(doc="Don't save predictions for nonpathogenic reads."))], outputs=[ToolOutput(tag="out_re_filter_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_re_filter_output", type_hint=File()), doc=OutputDocumentation(doc="Refilter output directory."))], container="quay.io/biocontainers/deepaclive:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Live_Refilter_V0_1_0().translate("wdl")

