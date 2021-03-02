from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Pasteurize_V0_1_0 = CommandToolBuilder(tool="pasteurize", base_command=["pasteurize"], inputs=[ToolInput(tag="in_all_imports", input_type=Boolean(optional=True), prefix="--all-imports", doc=InputDocumentation(doc="Adds all __future__ and future imports to each module")), ToolInput(tag="in_fix", input_type=String(optional=True), prefix="--fix", doc=InputDocumentation(doc="Each FIX specifies a transformation; default: all")), ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="Run 2to3 concurrently")), ToolInput(tag="in_no_fix", input_type=String(optional=True), prefix="--nofix", doc=InputDocumentation(doc="Prevent a fixer from being run.")), ToolInput(tag="in_list_fixes", input_type=Boolean(optional=True), prefix="--list-fixes", doc=InputDocumentation(doc="List available transformations")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="More verbose logging")), ToolInput(tag="in_no_diffs", input_type=Boolean(optional=True), prefix="--no-diffs", doc=InputDocumentation(doc="Don't show diffs of the refactoring")), ToolInput(tag="in_write", input_type=Boolean(optional=True), prefix="--write", doc=InputDocumentation(doc="Write back modified files")), ToolInput(tag="in_no_backups", input_type=Boolean(optional=True), prefix="--nobackups", doc=InputDocumentation(doc="Don't write backups for modified files.")), ToolInput(tag="in_file_vertical_line_dir", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pasteurize_V0_1_0().translate("wdl", allow_empty_container=True)

