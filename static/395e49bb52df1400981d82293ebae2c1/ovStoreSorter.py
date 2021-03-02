from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Ovstoresorter_V0_1_0 = CommandToolBuilder(tool="ovStoreSorter", base_command=["ovStoreSorter"], inputs=[ToolInput(tag="in_path_overlap_store", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="path to overlap store to create")), ToolInput(tag="in_path_sequence_store", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="path to sequence store")), ToolInput(tag="in_path_ovstoreconfig_configuration", input_type=File(optional=True), prefix="-C", doc=InputDocumentation(doc="path to ovStoreConfig configuration file")), ToolInput(tag="in_slice_process_n", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="slice to process (1 ... N)")), ToolInput(tag="in_maximum_memory_use", input_type=String(optional=True), prefix="-M", doc=InputDocumentation(doc="maximum memory to use, in gigabytes")), ToolInput(tag="in_delete_early", input_type=Boolean(optional=True), prefix="-deleteearly", doc=InputDocumentation(doc="remove intermediates as soon as possible (unsafe)")), ToolInput(tag="in_delete_late", input_type=Boolean(optional=True), prefix="-deletelate", doc=InputDocumentation(doc="remove intermediates when outputs exist (safe)")), ToolInput(tag="in_force_recompute_exists", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="force a recompute, even if the output exists or appears in progress")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ovstoresorter_V0_1_0().translate("wdl")

