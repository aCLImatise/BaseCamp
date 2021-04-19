from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, String

Parsec_Histories_Export_History_V0_1_0 = CommandToolBuilder(tool="parsec_histories_export_history", base_command=["parsec", "histories", "export_history"], inputs=[ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="create .tar.gz archive if ``True``, else .tar  [default:\nTrue]")), ToolInput(tag="in_include_hidden", input_type=Boolean(optional=True), prefix="--include_hidden", doc=InputDocumentation(doc="whether to include hidden datasets in the export")), ToolInput(tag="in_include_deleted", input_type=Boolean(optional=True), prefix="--include_deleted", doc=InputDocumentation(doc="whether to include deleted datasets in the export")), ToolInput(tag="in_wait", input_type=Boolean(optional=True), prefix="--wait", doc=InputDocumentation(doc="if ``True``, block until the export is ready; else,\nreturn immediately")), ToolInput(tag="in_max_wait", input_type=Float(optional=True), prefix="--maxwait", doc=InputDocumentation(doc="Total time (in seconds) to wait for the export to become\nready. When set, implies that ``wait`` is ``True``.")), ToolInput(tag="in_history_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Export_History_V0_1_0().translate("wdl")

