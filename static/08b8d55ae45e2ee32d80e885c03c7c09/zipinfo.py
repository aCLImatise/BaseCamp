from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Zipinfo_V0_1_0 = CommandToolBuilder(tool="zipinfo", base_command=["zipinfo"], inputs=[ToolInput(tag="in_short_unix_format", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="short Unix 'ls -l' format (def.)")), ToolInput(tag="in_filenames_only_one", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="filenames ONLY, one per line       -m  medium Unix 'ls -l' format")), ToolInput(tag="in_just_filenames_allow", input_type=Boolean(optional=True), prefix="-2", doc=InputDocumentation(doc="just filenames but allow -h/-t/-z  -l  long Unix 'ls -l' format")), ToolInput(tag="in_verbose_multipage_format", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose, multi-page format")), ToolInput(tag="in_print_zipfile_comment", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="print zipfile comment   -T  print file times in sortable decimal format")), ToolInput(tag="in_be_caseinsensitive_output", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="be case-insensitive     -M  page output through built-in 'more'")), ToolInput(tag="in_exclude_filenames_follow", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="exclude filenames that follow from listing")), ToolInput(tag="in_onetwosmlvchmttz", input_type=Boolean(optional=True), prefix="-12smlvChMtTz", doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/unzip:6.0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zipinfo_V0_1_0().translate("wdl")

