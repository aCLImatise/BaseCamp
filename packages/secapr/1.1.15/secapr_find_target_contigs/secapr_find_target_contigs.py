from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, Boolean

Secapr_Find_Target_Contigs_V0_1_0 = CommandToolBuilder(tool="secapr_find_target_contigs", base_command=["secapr", "find_target_contigs"], inputs=[ToolInput(tag="in_contigs", input_type=Directory(optional=True), prefix="--contigs", doc=InputDocumentation(doc="The directory containing the assembled contigs in\nfasta format.")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="The fasta-file containign the reference sequences\n(probe-order-file).")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the extracted target\ncontigs and lastz results.")), ToolInput(tag="in_min_coverage", input_type=Int(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="The minimum percent coverage required for a match\n[default=80].")), ToolInput(tag="in_min_identity", input_type=Int(optional=True), prefix="--min-identity", doc=InputDocumentation(doc="The minimum percent identity required for a match\n[default=80].")), ToolInput(tag="in_keep_duplicates", input_type=Boolean(optional=True), prefix="--keep-duplicates", doc=InputDocumentation(doc="Use this flag in case you want to keep those contigs\nthat span across multiple exons.")), ToolInput(tag="in_keep_paralogs", input_type=Boolean(optional=True), prefix="--keep-paralogs", doc=InputDocumentation(doc="Use this flag in case you want to keep loci with signs\nof paralogy (multiple contig matches). One randomely\nselected contig will be selected for these loci.")), ToolInput(tag="in_disable_stats", input_type=Boolean(optional=True), prefix="--disable_stats", doc=InputDocumentation(doc="Use this flag if you want to disable generation of\nstats (can be necessary because previous stats files\ncan't be found if files are used that were not\npreviously processed with SECAPR)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Secapr_Find_Target_Contigs_V0_1_0().translate("wdl", allow_empty_container=True)

