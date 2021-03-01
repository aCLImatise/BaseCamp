from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Metaxa2_Install_Database_V0_1_0 = CommandToolBuilder(tool="metaxa2_install_database", base_command=["metaxa2_install_database"], inputs=[ToolInput(tag="in_specify_name_specified", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc=": Specify the name of the database to install (usually a gene name)\nIf not specified, the program will show a list of available database options")), ToolInput(tag="in_directory_where_install", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc=": The directory where to install the database. Default is in the metaxa2_db directory in the same directory as Metaxa2 itself")), ToolInput(tag="in_repository_download_files", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc=": The repository to download the files from. Default is http://microbiology.se/sw/metaxa2_dbs"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metaxa2_Install_Database_V0_1_0().translate("wdl", allow_empty_container=True)

