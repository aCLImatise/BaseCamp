from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Go_Show_Paths_To_Root_Pl_V0_1_0 = CommandToolBuilder(tool="go_show_paths_to_root.pl", base_command=["go-show-paths-to-root.pl"], inputs=[ToolInput(tag="in_writes_parse_errors", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="writes parse errors in XML - defaults to STDERR (there should be no\nparse errors in well formed files)")), ToolInput(tag="in_determines_parser_use", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="determines which parser to use; if left unspecified, will make a guess\nbased on file suffix. See below for formats")), ToolInput(tag="in_use_cache", input_type=Boolean(optional=True), prefix="-use_cache", doc=InputDocumentation(doc="If this switch is specified, then caching mode is turned on.\nWith caching mode, the first time you parse a file, then an additional\nfile will be exported in a special format that is fast to parse. This\nfile will have the same filename as the original file, except it will\nhave the '.cache' suffix.\nThe next time you parse the file, this program will automatically check\nfor the existence of the '.cache' file. If it exists, and is more recent\nthan the file you specified, this is parsed instead. If it does not\nexist, it is rebuilt.")), ToolInput(tag="in_top", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS\ngo-show-paths-to-root.pl -id GO:0008021 ontology/gene_ontology.obo\ngo-show-paths-to-root.pl -names -id GO:0008021 ontology/gene_ontology.obo")), ToolInput(tag="in_time", input_type=String(), position=0, doc=InputDocumentation(doc="Subsequent parses can be speeded up using the use_cache option"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Go_Show_Paths_To_Root_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

