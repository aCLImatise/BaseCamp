from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean, File, Int

Rabix_V0_1_0 = CommandToolBuilder(tool="rabix", base_command=["rabix"], inputs=[ToolInput(tag="in_basedir", input_type=Directory(optional=True), prefix="--basedir", doc=InputDocumentation(doc="execution directory")), ToolInput(tag="in_configuration_dir", input_type=Directory(optional=True), prefix="--configuration-dir", doc=InputDocumentation(doc="configuration directory")), ToolInput(tag="in_cache_dir", input_type=String(optional=True), prefix="--cache-dir", doc=InputDocumentation(doc="basic tool result caching (experimental)")), ToolInput(tag="in_no_container", input_type=Boolean(optional=True), prefix="--no-container", doc=InputDocumentation(doc="don't use containers")), ToolInput(tag="in_outdir", input_type=String(optional=True), prefix="--outdir", doc=InputDocumentation(doc="legacy compatibility parameter, doesn't do anything")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="don't print anything except final result on standard")), ToolInput(tag="in_tes_storage", input_type=File(optional=True), prefix="--tes-storage", doc=InputDocumentation(doc="path to the storage used by the ga4gh tes server\n(currently supports locall dirs and google storage\ncloud paths)")), ToolInput(tag="in_tes_url", input_type=Int(optional=True), prefix="--tes-url", doc=InputDocumentation(doc="url of the ga4gh task execution server instance\n(experimental)")), ToolInput(tag="in_tmp_outdir_prefix", input_type=String(optional=True), prefix="--tmp-outdir-prefix", doc=InputDocumentation(doc="legacy compatibility parameter, doesn't do anything")), ToolInput(tag="in_tmpdir_prefix", input_type=String(optional=True), prefix="--tmpdir-prefix", doc=InputDocumentation(doc="legacy compatibility parameter, doesn't do anything")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print more information on the standard output")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="-r,--resolve-app               resolve all referenced fragments and print application"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rabix_V0_1_0().translate("wdl", allow_empty_container=True)

