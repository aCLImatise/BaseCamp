from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Sarscov2Summary_V0_1_0 = CommandToolBuilder(tool="sarscov2summary", base_command=["sarscov2summary"], inputs=[ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Write results here")), ToolInput(tag="in_slac", input_type=File(optional=True), prefix="--slac", doc=InputDocumentation(doc="SLAC results file")), ToolInput(tag="in_fel", input_type=File(optional=True), prefix="--fel", doc=InputDocumentation(doc="FEL results file")), ToolInput(tag="in_meme", input_type=File(optional=True), prefix="--meme", doc=InputDocumentation(doc="MEME results file")), ToolInput(tag="in_prime", input_type=File(optional=True), prefix="--prime", doc=InputDocumentation(doc="PRIME results file")), ToolInput(tag="in_database", input_type=String(optional=True), prefix="--database", doc=InputDocumentation(doc="Primary database record to extract sequence\ninformation from")), ToolInput(tag="in_duplicates", input_type=File(optional=True), prefix="--duplicates", doc=InputDocumentation(doc="The JSON file recording compressed sequence duplicates")), ToolInput(tag="in_maf", input_type=String(optional=True), prefix="--MAF", doc=InputDocumentation(doc="Also include sites with hapoltype MAF >= this")), ToolInput(tag="in_evolutionary_fragment", input_type=String(optional=True), prefix="--evolutionary_fragment", doc=InputDocumentation(doc="Used in conjunction with evolutionary annotation to\ndesignate the fragment to look up")), ToolInput(tag="in_ma_fs", input_type=File(optional=True), prefix="--mafs", doc=InputDocumentation(doc="If provided, write a CSV file with MAF/p-value tables")), ToolInput(tag="in_evolutionary_csv", input_type=File(optional=True), prefix="--evolutionary_csv", doc=InputDocumentation(doc="If provided, write a CSV file with observed/predicted\nfrequncies\n")), ToolInput(tag="in_p_value", input_type=String(), position=0, doc=InputDocumentation(doc="-c COORDINATES, --coordinates COORDINATES")), ToolInput(tag="in_frequency", input_type=String(), position=0, doc=InputDocumentation(doc="-E EVOLUTIONARY_ANNOTATION, --evolutionary_annotation EVOLUTIONARY_ANNOTATION"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sarscov2Summary_V0_1_0().translate("wdl", allow_empty_container=True)

