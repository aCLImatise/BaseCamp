from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, File, Boolean, String

Sampling_Utils_Rand_Seq_V0_1_0 = CommandToolBuilder(tool="sampling_utils_rand_seq", base_command=["sampling-utils", "rand_seq"], inputs=[ToolInput(tag="in_num_seqs", input_type=Int(optional=True), prefix="--num-seqs", doc=InputDocumentation(doc="Number of sequences to generate  [default:\n1000]")), ToolInput(tag="in_gc_content", input_type=Float(optional=True), prefix="--gc-content", doc=InputDocumentation(doc="GC content (defaults to .5 out of 1)  [default:\n0.5]")), ToolInput(tag="in_infer_params", input_type=File(optional=True), prefix="--infer-params", doc=InputDocumentation(doc="Infer parameters GC content and Quality model\nfrom file")), ToolInput(tag="in_coding_prop", input_type=Float(optional=True), prefix="--coding-prop", doc=InputDocumentation(doc="Proportion of coding sequences  [default: 0.0]")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="Sequence length  [default: 150]")), ToolInput(tag="in_const_model", input_type=Boolean(optional=True), prefix="--const-model", doc=InputDocumentation(doc="Use a model with constant qualities + noise")), ToolInput(tag="in_dist_loc", input_type=Float(optional=True), prefix="--dist-loc", doc=InputDocumentation(doc="Use as the starting point quality  [default:\n30.0]")), ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="The output file is a FastQ file")), ToolInput(tag="in_save_model", input_type=File(optional=True), prefix="--save-model", doc=InputDocumentation(doc="Save inferred qualities model to a pickle file")), ToolInput(tag="in_read_model", input_type=File(optional=True), prefix="--read-model", doc=InputDocumentation(doc="Load qualities model from a pickle file")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_fast_q", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fast_q", type_hint=File()), doc=OutputDocumentation(doc="The output file is a FastQ file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sampling_Utils_Rand_Seq_V0_1_0().translate("wdl", allow_empty_container=True)

