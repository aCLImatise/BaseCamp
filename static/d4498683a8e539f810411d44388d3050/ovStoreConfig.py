from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, String, Boolean

Ovstoreconfig_V0_1_0 = CommandToolBuilder(tool="ovStoreConfig", base_command=["ovStoreConfig"], inputs=[ToolInput(tag="in_path_seqstore_assembly", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="path to seqStore for this assembly")), ToolInput(tag="in_list_ovb_files", input_type=File(optional=True), prefix="-L", doc=InputDocumentation(doc="a list of ovb files in 'fileList'")), ToolInput(tag="in_use_gigabytes_memory", input_type=Float(optional=True), prefix="-M", doc=InputDocumentation(doc="use up to 'g' gigabytes memory for sorting overlaps\ndefault 4; g-0.25 gb is available for sorting overlaps")), ToolInput(tag="in_create", input_type=File(optional=True), prefix="-create", doc=InputDocumentation(doc="write overlap store configuration to file 'config'")), ToolInput(tag="in_describe", input_type=String(optional=True), prefix="-describe", doc=InputDocumentation(doc="write a readable description of the config in 'config' to the screen")), ToolInput(tag="in_num_buckets", input_type=Boolean(optional=True), prefix="-numbuckets", doc=InputDocumentation(doc="write the number of buckets to the screen")), ToolInput(tag="in_num_slices", input_type=Boolean(optional=True), prefix="-numslices", doc=InputDocumentation(doc="write the number of slices to the screen")), ToolInput(tag="in_sort_memory", input_type=Boolean(optional=True), prefix="-sortmemory", doc=InputDocumentation(doc="write the memory needed (in GB) for a sort job to the screen")), ToolInput(tag="in_list_inputs", input_type=String(optional=True), prefix="-listinputs", doc=InputDocumentation(doc="write a list of the input ovb files needed for bucketizer job 'n'  -listslices n         write a list of the input slice files needed for sorter job 'n'")), ToolInput(tag="in_ov_overlap", input_type=String(), position=0, doc=InputDocumentation(doc="2 words of 64 bits each.")), ToolInput(tag="in_ov_overlap_sort_size", input_type=String(), position=1, doc=InputDocumentation(doc="192 bits")), ToolInput(tag="in_sc_child_max", input_type=String(), position=2, doc=InputDocumentation(doc="-1 processes")), ToolInput(tag="in_sc_open_max", input_type=String(), position=3, doc=InputDocumentation(doc="1048576 files"))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ovstoreconfig_V0_1_0().translate("wdl")

