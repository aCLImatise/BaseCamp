from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Float, Boolean

Genomedata_Hardmask_V0_1_0 = CommandToolBuilder(tool="genomedata_hardmask", base_command=["genomedata-hardmask"], inputs=[ToolInput(tag="in_track_name", input_type=Array(t=String(), optional=True), prefix="--trackname", doc=InputDocumentation(doc="Track(s) to be filtered (default: all)")), ToolInput(tag="in_hard_mask", input_type=Float(optional=True), prefix="--hardmask", doc=InputDocumentation(doc="Specify a comparison operation on a value to mask out\n(e.g. 'lt0.5' will mask all values less than 0.5). See\nthe bash comparison operators for the two letter\noperations (default: all values masked)")), ToolInput(tag="in_no_close", input_type=Boolean(optional=True), prefix="--no-close", doc=InputDocumentation(doc="Do not close the genomedata archive after masking")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Do not perform any masking. Useful with verbosity set\nto see what regions would be filtered")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print status and diagnostic messages")), ToolInput(tag="in_mask_file", input_type=String(), position=0, doc=InputDocumentation(doc="input mask file")), ToolInput(tag="in_gd_archive", input_type=String(), position=1, doc=InputDocumentation(doc="genomedata archive"))], outputs=[], container="quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomedata_Hardmask_V0_1_0().translate("wdl")

