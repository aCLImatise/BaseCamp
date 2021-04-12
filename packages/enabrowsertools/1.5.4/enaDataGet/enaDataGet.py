from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean, File

Enadataget_V0_1_0 = CommandToolBuilder(tool="enaDataGet", base_command=["enaDataGet"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="File format required. Format requested must be\npermitted for data type selected. sequence, assembly\nand wgs accessions: embl(default) and fasta formats.\nread group: submitted, fastq and sra formats. analysis\ngroup: submitted only.")), ToolInput(tag="in_dest", input_type=Directory(optional=True), prefix="--dest", doc=InputDocumentation(doc="Destination directory (default is current running\ndirectory)")), ToolInput(tag="in_wgs", input_type=Boolean(optional=True), prefix="--wgs", doc=InputDocumentation(doc="Download WGS set for each assembly if available\n(default is false)")), ToolInput(tag="in_extract_wgs", input_type=Boolean(optional=True), prefix="--extract-wgs", doc=InputDocumentation(doc="Extract WGS scaffolds for each assembly if available\n(default is false)")), ToolInput(tag="in_expanded", input_type=Boolean(optional=True), prefix="--expanded", doc=InputDocumentation(doc="Expand CON scaffolds when downloading embl format\n(default is false)")), ToolInput(tag="in_meta", input_type=Boolean(optional=True), prefix="--meta", doc=InputDocumentation(doc="Download read or analysis XML in addition to data\nfiles (default is false)")), ToolInput(tag="in_index", input_type=Boolean(optional=True), prefix="--index", doc=InputDocumentation(doc="Download CRAM index files with submitted CRAM files,\nif any (default is false). This flag is ignored for\nfastq and sra format options.")), ToolInput(tag="in_aspera", input_type=Boolean(optional=True), prefix="--aspera", doc=InputDocumentation(doc="Use the aspera command line client to download,\ninstead of FTP.")), ToolInput(tag="in_aspera_settings", input_type=File(optional=True), prefix="--aspera-settings", doc=InputDocumentation(doc="Use the provided settings file, will otherwise check\nfor environment variable or default settings file\nlocation."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enadataget_V0_1_0().translate("wdl", allow_empty_container=True)

