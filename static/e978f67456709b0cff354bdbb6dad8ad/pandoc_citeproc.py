from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Pandoc_Citeproc_V0_1_0 = CommandToolBuilder(tool="pandoc_citeproc", base_command=["pandoc-citeproc"], inputs=[ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="print man page to stdout")), ToolInput(tag="in_license", input_type=Boolean(optional=True), prefix="--license", doc=InputDocumentation(doc="print license to stdout")), ToolInput(tag="in_bib_two_yaml", input_type=Boolean(optional=True), prefix="--bib2yaml", doc=InputDocumentation(doc="convert bibliography to YAML")), ToolInput(tag="in_bib_two_json", input_type=Boolean(optional=True), prefix="--bib2json", doc=InputDocumentation(doc="convert bibliography to JSON")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="bibliography format")), ToolInput(tag="in_file_dot_dot", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pandoc_Citeproc_V0_1_0().translate("wdl", allow_empty_container=True)

