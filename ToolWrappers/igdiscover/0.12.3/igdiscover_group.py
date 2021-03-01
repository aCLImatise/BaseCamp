from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Igdiscover_Group_V0_1_0 = CommandToolBuilder(tool="igdiscover_group", base_command=["igdiscover", "group"], inputs=[ToolInput(tag="in_real_cdr_three", input_type=Boolean(optional=True), prefix="--real-cdr3", doc=InputDocumentation(doc="In addition to barcode, group sequences by real CDR3\n(detected with regex).")), ToolInput(tag="in_pseudo_cdr_three", input_type=Boolean(optional=True), prefix="--pseudo-cdr3", doc=InputDocumentation(doc="[START:END]\nIn addition to barcode, group sequences by pseudo\nCDR3. If START:END is omitted, use -80:-60.")), ToolInput(tag="in_groups_output", input_type=File(optional=True), prefix="--groups-output", doc=InputDocumentation(doc="Write tab-separated table with groups to FILE")), ToolInput(tag="in_plot_sizes", input_type=File(optional=True), prefix="--plot-sizes", doc=InputDocumentation(doc="Plot group sizes to FILE (.png or .pdf)")), ToolInput(tag="in_limit", input_type=String(optional=True), prefix="--limit", doc=InputDocumentation(doc="Limit processing to the first N reads")), ToolInput(tag="in_trim_g", input_type=Boolean(optional=True), prefix="--trim-g", doc=InputDocumentation(doc="Trim 'G' nucleotides at 5' end")), ToolInput(tag="in_minimum_length", input_type=Int(optional=True), prefix="--minimum-length", doc=InputDocumentation(doc="Minimum sequence length")), ToolInput(tag="in_barcode_length", input_type=Int(optional=True), prefix="--barcode-length", doc=InputDocumentation(doc="Length of barcode. Positive for 5' barcode, negative\nfor 3' barcode. Default: 12")), ToolInput(tag="in_json", input_type=File(optional=True), prefix="--json", doc=InputDocumentation(doc="Write statistics to FILE")), ToolInput(tag="in_sequences", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Group_V0_1_0().translate("wdl", allow_empty_container=True)

