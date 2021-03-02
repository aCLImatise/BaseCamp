from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float, Int, Boolean

Merge_Wrapper_Py_V0_1_0 = CommandToolBuilder(tool="merge_wrapper.py", base_command=["merge_wrapper.py"], inputs=[ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="the prefix for all output files")), ToolInput(tag="in_hco", input_type=Float(optional=True), prefix="--hco", doc=InputDocumentation(doc="the quickmerge hco parameter (default=5.0)")), ToolInput(tag="in_quickmerge_parameter_default", input_type=Float(optional=True), prefix="--c", doc=InputDocumentation(doc="the quickmerge c parameter (default=1.5)")), ToolInput(tag="in_length_cut_off", input_type=Int(optional=True), prefix="--length_cutoff", doc=InputDocumentation(doc="minimum seed contig length to be merged (default=0)")), ToolInput(tag="in_no_nuc_mer", input_type=Boolean(optional=True), prefix="--no_nucmer", doc=InputDocumentation(doc="skip the nucmer step")), ToolInput(tag="in_no_delta", input_type=Boolean(optional=True), prefix="--no_delta", doc=InputDocumentation(doc="skip the nucmer and delta-filter steps")), ToolInput(tag="in_stop_after_nuc_mer", input_type=Boolean(optional=True), prefix="--stop_after_nucmer", doc=InputDocumentation(doc="do not perform the delta-filter and merger steps")), ToolInput(tag="in_stop_after_df", input_type=Boolean(optional=True), prefix="--stop_after_df", doc=InputDocumentation(doc="do not perform the merger step")), ToolInput(tag="in_merging_length_cut_off", input_type=Int(optional=True), prefix="--merging_length_cutoff", doc=InputDocumentation(doc="set the merging length cutoff necessary for use in\nquickmerge (default 5000)")), ToolInput(tag="in_clean_only", input_type=Boolean(optional=True), prefix="--clean_only", doc=InputDocumentation(doc="generate safe FASTA files for merging, but do not\nmerge\n")), ToolInput(tag="in_hybrid_assembly_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="the output of a hybrid assembly program such as")), ToolInput(tag="in_dbgt_wool_c", input_type=Int(), position=1, doc=InputDocumentation(doc="self_assembly_fasta   the output of a self assembly program such as PBcR"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Wrapper_Py_V0_1_0().translate("wdl", allow_empty_container=True)

