from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Float

Sfftoca_V0_1_0 = CommandToolBuilder(tool="sffToCA", base_command=["sffToCA"], inputs=[ToolInput(tag="in_insert_size", input_type=String(optional=True), prefix="-insertsize", doc=InputDocumentation(doc="d        Mates are on average i +- d bp apart.")), ToolInput(tag="in_library_name", input_type=String(optional=True), prefix="-libraryname", doc=InputDocumentation(doc="The UID of the library these reads are added to.")), ToolInput(tag="in_linker", input_type=Boolean(optional=True), prefix="-linker", doc=InputDocumentation(doc="[name | seq]   Search for linker, create mated reads.\nName is one of:\n'flx'      == GTTGGAACCGAAAGGGTTTGAATTCAAACCCTTTCGGTTCCAAC\n'titanium' == TCGTATAACTTCGTATAATGTATGCTATACGAAGTTATTACG and\nCGTAATAACTTCGTATAGCATACATTATACGAAGTTATACGA")), ToolInput(tag="in_linker_split", input_type=Boolean(optional=True), prefix="-linkersplit", doc=InputDocumentation(doc="id cv    Threshold for splitting linker into mate pairs (0.90, 0.50).")), ToolInput(tag="in_linker_trim", input_type=Boolean(optional=True), prefix="-linkertrim", doc=InputDocumentation(doc="id cv    Threshold for trimming linker out of a read (0.90, 0.33).")), ToolInput(tag="in_linker_detect", input_type=Float(optional=True), prefix="-linkerdetect", doc=InputDocumentation(doc="cv    Threshold for detecting linker (0.85, 0.25).")), ToolInput(tag="in_node_dup", input_type=Boolean(optional=True), prefix="-nodedup", doc=InputDocumentation(doc="Do not remove reads that are a perfect prefix of another read.")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="-output", doc=InputDocumentation(doc="Write output to files prefixed with 'name'.  Three files are created:")), ToolInput(tag="in_name_dot_frg", input_type=String(), position=0, doc=InputDocumentation(doc="-- CA format fragments.")), ToolInput(tag="in_name_dot_log", input_type=String(), position=1, doc=InputDocumentation(doc="-- Actions taken; deleted fragments, mate splits, etc."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sfftoca_V0_1_0().translate("wdl", allow_empty_container=True)

