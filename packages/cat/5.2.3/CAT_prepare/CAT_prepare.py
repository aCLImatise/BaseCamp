from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cat_Prepare_V0_1_0 = CommandToolBuilder(tool="CAT_prepare", base_command=["CAT", "prepare"], inputs=[ToolInput(tag="in_fresh", input_type=Boolean(optional=True), prefix="--fresh", doc=InputDocumentation(doc="Start with a fresh database.")), ToolInput(tag="in_existing", input_type=Boolean(optional=True), prefix="--existing", doc=InputDocumentation(doc="Start with an existing database. CAT will search the\nsupplied database and taxonomy folders and only\nconstruct files that do not exist yet.")), ToolInput(tag="in_database_folder", input_type=Boolean(optional=True), prefix="--database_folder", doc=InputDocumentation(doc="Name of folder to which database files will be written\n(default: CAT_database.{date})")), ToolInput(tag="in_taxonomy_folder", input_type=Boolean(optional=True), prefix="--taxonomy_folder", doc=InputDocumentation(doc="Name of folder to which taxonomy files will be\ndownloaded (default: CAT_taxonomy.{date})")), ToolInput(tag="in_path_to_diamond", input_type=Boolean(optional=True), prefix="--path_to_diamond", doc=InputDocumentation(doc="Path to DIAMOND binaries. Supply if CAT/BAT cannot\nfind DIAMOND.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress verbosity.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase verbosity.")), ToolInput(tag="in_no_log", input_type=Boolean(optional=True), prefix="--no_log", doc=InputDocumentation(doc="Suppress log file.")), ToolInput(tag="in_nproc", input_type=Boolean(optional=True), prefix="--nproc", doc=InputDocumentation(doc="Number of cores to deploy by DIAMOND (default:\nmaximum).\n"))], outputs=[], container="quay.io/biocontainers/cat:5.2.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cat_Prepare_V0_1_0().translate("wdl")

