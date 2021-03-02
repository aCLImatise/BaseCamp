from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Hisatgenotype_Py_V0_1_0 = CommandToolBuilder(tool="hisatgenotype.py", base_command=["hisatgenotype.py"], inputs=[ToolInput(tag="in_base_name", input_type=File(optional=True), prefix="--base-name", doc=InputDocumentation(doc="base filename for genotype genome")), ToolInput(tag="in_region_list", input_type=String(optional=True), prefix="--region-list", doc=InputDocumentation(doc="A comma-separated list of regions (default: empty)")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="FASTA file")), ToolInput(tag="in_filename_singleend_reads", input_type=File(optional=True), prefix="-U", doc=InputDocumentation(doc="filename for single-end reads")), ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="filename for paired-end reads")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="filename for paired-end reads")), ToolInput(tag="in_alignment_file", input_type=File(optional=True), prefix="--alignment-file", doc=InputDocumentation(doc="Sorted BAM alignment file name")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads")), ToolInput(tag="in_num_edit_dist", input_type=Int(optional=True), prefix="--num-editdist", doc=InputDocumentation(doc="Maximum number of mismatches per read alignment to be\nconsidered (default: 2)")), ToolInput(tag="in_assembly", input_type=Boolean(optional=True), prefix="--assembly", doc=InputDocumentation(doc="Perform assembly")), ToolInput(tag="in_local_database", input_type=Boolean(optional=True), prefix="--local-database", doc=InputDocumentation(doc="Use local database")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="also print some statistics to stderr")), ToolInput(tag="in_debug", input_type=Int(optional=True), prefix="--debug", doc=InputDocumentation(doc="e.g., test_id:10,read_id:10000,basic_test"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisatgenotype_Py_V0_1_0().translate("wdl", allow_empty_container=True)

