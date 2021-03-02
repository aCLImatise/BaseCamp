from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, Int, String

Peakaboo_V0_1_0 = CommandToolBuilder(tool="peakaboo", base_command=["peakaboo"], inputs=[ToolInput(tag="in_arg_specify_text", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --filelist ] arg       : specify text file containing filenames")), ToolInput(tag="in_arg_set_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outdir ] arg (=.)    : set output directory")), ToolInput(tag="in_arg_set_extension", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="[ --ext ] arg (=.peaks)  : set extension for output files")), ToolInput(tag="in_scan_begin", input_type=Int(optional=True), prefix="--scanBegin", doc=InputDocumentation(doc="(=1)        : set first scan")), ToolInput(tag="in_scan_end", input_type=Int(optional=True), prefix="--scanEnd", doc=InputDocumentation(doc="(=2147483647) : set last scan")), ToolInput(tag="in_mz_low", input_type=Int(optional=True), prefix="--mzLow", doc=InputDocumentation(doc="(=200)          : set mz low cutoff")), ToolInput(tag="in_mz_high", input_type=Int(optional=True), prefix="--mzHigh", doc=InputDocumentation(doc="(=2000)        : set mz high cutoff")), ToolInput(tag="in_files", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_set_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_arg_set_directory", type_hint=File()), doc=OutputDocumentation(doc="[ --outdir ] arg (=.)    : set output directory"))], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peakaboo_V0_1_0().translate("wdl")

