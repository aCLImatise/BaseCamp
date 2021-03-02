from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Align2Model_V0_1_0 = CommandToolBuilder(tool="align2model", base_command=["align2model"], inputs=[ToolInput(tag="in__contains_model", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=", which contains a MODEL, or")), ToolInput(tag="in_model_file", input_type=File(optional=True), prefix="-model_file", doc=InputDocumentation(doc=", where file contains any model structure, or")), ToolInput(tag="in_track_mod", input_type=File(optional=True), prefix="-trackmod", doc=InputDocumentation(doc=",file2,..., for a multitrack model, or")), ToolInput(tag="in_query", input_type=File(optional=True), prefix="-query", doc=InputDocumentation(doc="for a Smith and Waterman query model.\n-modelfile model_file             required\n-db seq_file [-db seq_filen]*     one or more sequence files\n[-id seqid]*                      one or more sequence IDs\n[-pptrim <value>]*                create .ta2m trimmed alignment"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Align2Model_V0_1_0().translate("wdl", allow_empty_container=True)

