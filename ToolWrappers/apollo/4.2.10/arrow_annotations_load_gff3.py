from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Arrow_Annotations_Load_Gff3_V0_1_0 = CommandToolBuilder(tool="arrow_annotations_load_gff3", base_command=["arrow", "annotations", "load_gff3"], inputs=[ToolInput(tag="in_source", input_type=String(optional=True), prefix="--source", doc=InputDocumentation(doc="URL where the input dataset can be found.")), ToolInput(tag="in_batch_size", input_type=Int(optional=True), prefix="--batch_size", doc=InputDocumentation(doc="Size of batches before writing  [default: 1]")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="Run in dry run mode")), ToolInput(tag="in_use_name", input_type=Boolean(optional=True), prefix="--use_name", doc=InputDocumentation(doc="Use the given name instead of generating one.")), ToolInput(tag="in_disable_cds_recalculation", input_type=Boolean(optional=True), prefix="--disable_cds_recalculation", doc=InputDocumentation(doc="Disable CDS recalculation and instead use the\none provided")), ToolInput(tag="in_timing", input_type=Boolean(optional=True), prefix="--timing", doc=InputDocumentation(doc="Output loading performance metrics")), ToolInput(tag="in_organism", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_three", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Annotations_Load_Gff3_V0_1_0().translate("wdl")

