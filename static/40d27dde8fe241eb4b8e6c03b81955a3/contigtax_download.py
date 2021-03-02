from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String, Boolean

Contigtax_Download_V0_1_0 = CommandToolBuilder(tool="contigtax_download", base_command=["contigtax", "download"], inputs=[ToolInput(tag="in_dl_dir", input_type=Directory(optional=True), prefix="--dldir", doc=InputDocumentation(doc="Write files to this directory. Defaults to db name in\ncurrent directory. Will be created if missing.")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="Temporary directory for downloading files")), ToolInput(tag="in_tax_dir", input_type=Directory(optional=True), prefix="--taxdir", doc=InputDocumentation(doc="Directory to store NCBI taxdump files. Defaults to\n'taxonomy/' in current directory")), ToolInput(tag="in_sqlite_db", input_type=File(optional=True), prefix="--sqlitedb", doc=InputDocumentation(doc="Name of ete3 sqlite file to be created within")), ToolInput(tag="in_tax_dir_dot", input_type=String(optional=True), prefix="--taxdir.", doc=InputDocumentation(doc="to 'taxonomy.sqlite'")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite downloaded files")), ToolInput(tag="in_skip_check", input_type=Boolean(optional=True), prefix="--skip_check", doc=InputDocumentation(doc="Skip check of downloaded fasta file. Default: False")), ToolInput(tag="in_skip_id_map", input_type=Boolean(optional=True), prefix="--skip_idmap", doc=InputDocumentation(doc="Skip download of seqid->taxid mapfile (only applies to\n'nr' database).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Contigtax_Download_V0_1_0().translate("wdl", allow_empty_container=True)

