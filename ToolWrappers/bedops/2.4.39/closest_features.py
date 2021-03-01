from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Closest_Features_V0_1_0 = CommandToolBuilder(tool="closest_features", base_command=["closest-features"], inputs=[ToolInput(tag="in_chrom", input_type=String(optional=True), prefix="--chrom", doc=InputDocumentation(doc="Jump to and process data for given <chromosome> only.")), ToolInput(tag="in_closest", input_type=Boolean(optional=True), prefix="--closest", doc=InputDocumentation(doc="Choose the closest element for output only.  Ties go the left element.")), ToolInput(tag="in_delim", input_type=String(optional=True), prefix="--delim", doc=InputDocumentation(doc="Change output delimiter from '|' to <delim> between columns (e.g. '\t')")), ToolInput(tag="in_dist", input_type=Boolean(optional=True), prefix="--dist", doc=InputDocumentation(doc="Print the signed distances to the <input-file> element as additional\ncolumns of output.  An overlapping element has a distance of 0.")), ToolInput(tag="in_ec", input_type=Boolean(optional=True), prefix="--ec", doc=InputDocumentation(doc="Error check all input files (slower).")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="Accept headers (VCF, GFF, SAM, BED, WIG) in any input file.")), ToolInput(tag="in_no_overlaps", input_type=Boolean(optional=True), prefix="--no-overlaps", doc=InputDocumentation(doc="Overlapping elements from <query-file> will not be reported.")), ToolInput(tag="in_no_ref", input_type=Boolean(optional=True), prefix="--no-ref", doc=InputDocumentation(doc="Do not echo elements from <input-file>.")), ToolInput(tag="in_process_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Closest_Features_V0_1_0().translate("wdl", allow_empty_container=True)

