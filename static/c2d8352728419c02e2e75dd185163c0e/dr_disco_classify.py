from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Dr_Disco_Classify_V0_1_0 = CommandToolBuilder(tool="dr_disco_classify", base_command=["dr-disco", "classify"], inputs=[ToolInput(tag="in_only_valid", input_type=Boolean(optional=True), prefix="--only-valid", doc=InputDocumentation(doc="Only return results marked as 'valid'")), ToolInput(tag="in_blacklist_regions", input_type=File(optional=True), prefix="--blacklist-regions", doc=InputDocumentation(doc="Blacklist these regions (BED file)")), ToolInput(tag="in_blacklist_junctions", input_type=String(optional=True), prefix="--blacklist-junctions", doc=InputDocumentation(doc="Blacklist these region-to-region junctions\n(custom format, see files in ./share/)")), ToolInput(tag="in_min_chim_overhang", input_type=Int(optional=True), prefix="--min-chim-overhang", doc=InputDocumentation(doc="Minimum alignment length on each side of the\njunction. May need to be set to smaller values\nfor read lengths smaller than 75bp. Larger\nvalues are more stringent. [default=50]")), ToolInput(tag="in_ff_pe", input_type=Boolean(optional=True), prefix="--ffpe", doc=InputDocumentation(doc="Lowers the threshold for the relative amount of\nmismatches, as often found in FFPE material.\nNote that enabling this option will\nconsequently result in more false positives.")), ToolInput(tag="in_table_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_table_output_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dr_Disco_Classify_V0_1_0().translate("wdl", allow_empty_container=True)

