from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Array, File

Bedtools_Tag_V0_1_0 = CommandToolBuilder(tool="bedtools_tag", base_command=["bedtools", "tag"], inputs=[ToolInput(tag="in_require_overlaps_same", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Require overlaps on the same strand.  That is, only tag alignments that have the same\nstrand as a feature in the annotation file(s).")), ToolInput(tag="in_require_overlaps_opposite", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Require overlaps on the opposite strand.  That is, only tag alignments that have the opposite\nstrand as a feature in the annotation file(s).")), ToolInput(tag="in_minimum_overlap_required", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Minimum overlap required as a fraction of the alignment.\n- Default is 1E-9 (i.e., 1bp).\n- FLOAT (e.g. 0.50)")), ToolInput(tag="in_tag", input_type=Boolean(optional=True), prefix="-tag", doc=InputDocumentation(doc="Dictate what the tag should be. Default is YB.\n- STRING (two characters, e.g., YK)")), ToolInput(tag="in_names", input_type=Boolean(optional=True), prefix="-names", doc=InputDocumentation(doc="Use the name field from the annotation files to populate tags.\nBy default, the -labels values are used.")), ToolInput(tag="in_scores", input_type=String(optional=True), prefix="-scores", doc=InputDocumentation(doc="the score field from the annotation files to populate tags.\nBy default, the -labels values are used.")), ToolInput(tag="in_intervals", input_type=Boolean(optional=True), prefix="-intervals", doc=InputDocumentation(doc="Use the full interval (including name, score, and strand) to populate tags.\nRequires the -labels option to identify from which file the interval came.\n")), ToolInput(tag="in_labels", input_type=Array(t=String(), optional=True), prefix="-labels", doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=Array(t=File(), optional=True), prefix="-files", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Tag_V0_1_0().translate("wdl", allow_empty_container=True)

