from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Hmmpgmd_V0_1_0 = CommandToolBuilder(tool="hmmpgmd", base_command=["hmmpgmd"], inputs=[ToolInput(tag="in_master", input_type=Boolean(optional=True), prefix="--master", doc=InputDocumentation(doc=": run program as the master server")), ToolInput(tag="in_worker", input_type=String(optional=True), prefix="--worker", doc=InputDocumentation(doc=": run program as a worker with server at <s>")), ToolInput(tag="in_c_port", input_type=Int(optional=True), prefix="--cport", doc=InputDocumentation(doc=": port to use for client/server communication  [51371]")), ToolInput(tag="in_w_port", input_type=Int(optional=True), prefix="--wport", doc=InputDocumentation(doc=": port to use for server/worker communication  [51372]")), ToolInput(tag="in_cc_ncts", input_type=Int(optional=True), prefix="--ccncts", doc=InputDocumentation(doc=": maximum number of client side connections to accept  [16]")), ToolInput(tag="in_wcnc_ts", input_type=Int(optional=True), prefix="--wcncts", doc=InputDocumentation(doc=": maximum number of worker side connections to accept  [32]")), ToolInput(tag="in_pid", input_type=File(optional=True), prefix="--pid", doc=InputDocumentation(doc=": file to write process id to")), ToolInput(tag="in_seq_db", input_type=String(optional=True), prefix="--seqdb", doc=InputDocumentation(doc=": protein database to cache for searches")), ToolInput(tag="in_hmm_db", input_type=String(optional=True), prefix="--hmmdb", doc=InputDocumentation(doc=": hmm database to cache for searches")), ToolInput(tag="in_cpu", input_type=Int(optional=True), prefix="--cpu", doc=InputDocumentation(doc=": number of parallel CPU workers to use for multithreads  [2]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmpgmd_V0_1_0().translate("wdl", allow_empty_container=True)

