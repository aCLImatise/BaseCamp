from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Trnascan_1_4_V0_1_0 = CommandToolBuilder(tool="trnascan_1.4", base_command=["trnascan-1.4"], inputs=[ToolInput(tag="in_use_original_trnascan", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": use original tRNAscan 1.3 parameters (default)")), ToolInput(tag="in_use_search_parameters", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": use relaxed search parameters (used with tRNAscan-SE)")), ToolInput(tag="in_use_alternate_userset", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": use alternate (user-set) search parameters")), ToolInput(tag="in__suppress_credits", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": suppress credits")), ToolInput(tag="in_write_results_outfile", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=": write results to <outfile>")), ToolInput(tag="in_start_sequence_numbering", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc=": start sequence numbering at <integer> (def=1)")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_trnascan", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trnascan_1_4_V0_1_0().translate("wdl", allow_empty_container=True)

