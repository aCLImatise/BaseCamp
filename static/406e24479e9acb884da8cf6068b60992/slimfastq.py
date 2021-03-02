from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Slimfastq_V0_1_0 = CommandToolBuilder(tool="slimfastq", base_command=["slimfastq"], inputs=[ToolInput(tag="in_usrfilename_default_stdin", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="usr-filename : (default: stdin)")), ToolInput(tag="in__required_compressed", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc=": required - compressed")), ToolInput(tag="in_decode_instead_encoding", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": decode (instead of encoding)")), ToolInput(tag="in_silently_overwrite_files", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc=": silently overwrite existing files")), ToolInput(tag="in_compression_level_default", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc=": compression level 1 to 4 (default is 3 )")), ToolInput(tag="in_alias_l_etcwhere", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc=": alias for -l 1, -l 2, etc\nWhere levels are:\n1: Uses less than 4M memory (!), yields the worse compression (still much better than gzip)\n2: Uses about 30M memory, resonable compression\n3: Uses about 80M memory, best compression <default level>\n4: Compress a little more, but very costly (competition mode?)")), ToolInput(tag="in_version_internal_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": version : internal version")), ToolInput(tag="in_stat_information_compressed", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": stat : information about a compressed file")), ToolInput(tag="in_suppress_stats_info", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": suppress extra stats info that could have been seen by -s")), ToolInput(tag="in_usr_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/slimfastq:2.04--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slimfastq_V0_1_0().translate("wdl")

