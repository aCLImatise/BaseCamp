from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, File, String, Int

Covels_Se_V0_1_0 = CommandToolBuilder(tool="covels_SE", base_command=["covels-SE"], inputs=[ToolInput(tag="in_do_complementary_strand", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": do complementary strand too")), ToolInput(tag="in_set_background_expected", input_type=Float(optional=True), prefix="-g", doc=InputDocumentation(doc=": set background expected GC content (0.5 default)")), ToolInput(tag="in_save_hits_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": save hits in <file>")), ToolInput(tag="in_set_reporting_threshold", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc=": set score reporting threshold")), ToolInput(tag="in_set_scanning_size", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc=": set scanning window size")), ToolInput(tag="in_save_name_last", input_type=File(optional=True), prefix="-D", doc=InputDocumentation(doc=": save name of last sequence processed")), ToolInput(tag="in_set_epsilon_fast", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc=": set epsilon for fast search")), ToolInput(tag="in_fast_heuristic_search", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc=": fast heuristic search")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_cove_ls", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cm_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Covels_Se_V0_1_0().translate("wdl")

