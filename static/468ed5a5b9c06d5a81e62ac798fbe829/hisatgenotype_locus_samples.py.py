from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Int, Boolean

Hisatgenotype_Locus_Samples_Py_V0_1_0 = CommandToolBuilder(tool="hisatgenotype_locus_samples.py", base_command=["hisatgenotype_locus_samples.py"], inputs=[ToolInput(tag="in_reference_type", input_type=String(optional=True), prefix="--reference-type", doc=InputDocumentation(doc="Reference type: gene, chromosome, and genome (default:\ngene)")), ToolInput(tag="in_region_list", input_type=String(optional=True), prefix="--region-list", doc=InputDocumentation(doc="A comma-separated list of regions (default: empty)")), ToolInput(tag="in_read_dir", input_type=Directory(optional=True), prefix="--read-dir", doc=InputDocumentation(doc="read directory (e.g. read_input)")), ToolInput(tag="in_num_edit_dist", input_type=Int(optional=True), prefix="--num-editdist", doc=InputDocumentation(doc="Maximum number of mismatches per read alignment to be\nconsidered (default: 2)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads")), ToolInput(tag="in_assembly", input_type=Boolean(optional=True), prefix="--assembly", doc=InputDocumentation(doc="Perform assembly")), ToolInput(tag="in_max_sample", input_type=Int(optional=True), prefix="--max-sample", doc=InputDocumentation(doc="Number of samples to be analyzed (default: sys.maxint)")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Output directory (default: (empty))")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="also print some statistics to stderr")), ToolInput(tag="in_platinum_check", input_type=Boolean(optional=True), prefix="--platinum-check", doc=InputDocumentation(doc="Check for concordance of platinum genomes"))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default: (empty))"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisatgenotype_Locus_Samples_Py_V0_1_0().translate("wdl", allow_empty_container=True)

