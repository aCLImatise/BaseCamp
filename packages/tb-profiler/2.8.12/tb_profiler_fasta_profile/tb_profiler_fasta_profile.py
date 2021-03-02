from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Directory, Boolean

Tb_Profiler_Fasta_Profile_V0_1_0 = CommandToolBuilder(tool="tb_profiler_fasta_profile", base_command=["tb-profiler", "fasta_profile"], inputs=[ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Mutation panel name (default: tbdb)")), ToolInput(tag="in_external_db", input_type=File(optional=True), prefix="--external_db", doc=InputDocumentation(doc="Path to db files prefix (overrides '--db' parameter)\n(default: None)")), ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="--dir", doc=InputDocumentation(doc="Storage directory (default: .)")), ToolInput(tag="in_txt", input_type=Boolean(optional=True), prefix="--txt", doc=InputDocumentation(doc="Add text output (default: False)")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="Add CSV output (default: False)")), ToolInput(tag="in_pdf", input_type=Boolean(optional=True), prefix="--pdf", doc=InputDocumentation(doc="Add PDF output. This requires pdflatex to be installed\n(default: False)")), ToolInput(tag="in_add_columns", input_type=String(optional=True), prefix="--add_columns", doc=InputDocumentation(doc="Add additional columns found in the mutation database\nto the text and pdf results (default: None)")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbosity increases from 0 to 2 (default: 0)")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="VCF file")), ToolInput(tag="in_prefix", input_type=String(), position=1, doc=InputDocumentation(doc="VCF file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tb_Profiler_Fasta_Profile_V0_1_0().translate("wdl", allow_empty_container=True)

