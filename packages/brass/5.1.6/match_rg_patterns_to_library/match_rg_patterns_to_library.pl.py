from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean, Int, String

Match_Rg_Patterns_To_Library_Pl_V0_1_0 = CommandToolBuilder(tool="match_rg_patterns_to_library.pl", base_command=["match_rg_patterns_to_library.pl"], inputs=[ToolInput(tag="in_acf", input_type=Float(optional=True), prefix="-acf", doc=InputDocumentation(doc="Aberrant cell fraction [1.0]")), ToolInput(tag="in_ploidy", input_type=Float(optional=True), prefix="-ploidy", doc=InputDocumentation(doc="Tumour ploidy [2.0]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="Print debugging messages")), ToolInput(tag="in_max_balanced_rg_dist", input_type=Int(optional=True), prefix="-max_balanced_rg_dist", doc=InputDocumentation(doc="Maximum distance at which reciprocal\nrearrangements can still be considered balanced\n[1000]")), ToolInput(tag="in_max_foldback_distance", input_type=Int(optional=True), prefix="-max_foldback_distance", doc=InputDocumentation(doc="Maximum distance for fold-back type\nrearrangements to be considered as purely\nfold-back [5000].")), ToolInput(tag="in_min_seg_size_for_cn", input_type=Int(optional=True), prefix="-min_seg_size_for_cn", doc=InputDocumentation(doc="Minimum segment size from which CNs estimates\nare trusted and used for filtering out false\npositive rearrangements [10000]")), ToolInput(tag="in_min_cn_change", input_type=Float(optional=True), prefix="-min_cn_change", doc=InputDocumentation(doc="The minimum amount the copy number change\nacross a putative rearrangement call for the\nrearrangement to be not filtered out (whenever\nthe copy number change across breakpoint can be\ncomputed) [0.5]")), ToolInput(tag="in_keep_small_dels_and_tds", input_type=Boolean(optional=True), prefix="-keep_small_dels_and_tds", doc=InputDocumentation(doc="Keep TDs and deletions that are smaller than\nmin_seg_size_for_cn? [TRUE]")), ToolInput(tag="in_max_depth", input_type=Int(optional=True), prefix="-max_depth", doc=InputDocumentation(doc="Maximum length of 'rearrangement paths' [3]")), ToolInput(tag="in_cn_segments_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="REARRANGEMENTS.BEDPE is a BEDPE file with rearrangement ID in column 7"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Match_Rg_Patterns_To_Library_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

