from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mktemp_V0_1_0 = CommandToolBuilder(tool="mktemp", base_command=["mktemp"], inputs=[ToolInput(tag="in_directory", input_type=Boolean(optional=True), prefix="--directory", doc=InputDocumentation(doc="create a directory, not a file")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="do not create anything; merely print a name (unsafe)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress diagnostics about file/dir-creation failure")), ToolInput(tag="in_suffix", input_type=String(optional=True), prefix="--suffix", doc=InputDocumentation(doc="append SUFF to TEMPLATE; SUFF must not contain a slash.\nThis option is implied if TEMPLATE does not end in X")), ToolInput(tag="in_tmpdir", input_type=String(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="[=DIR]  interpret TEMPLATE relative to DIR; if DIR is not\nspecified, use $TMPDIR if set, else /tmp.  With\nthis option, TEMPLATE must not be an absolute name;\nunlike with -t, TEMPLATE may contain slashes, but\nmktemp creates only the final component")), ToolInput(tag="in_interpret_template_single", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="interpret TEMPLATE as a single file name component,\nrelative to a directory: $TMPDIR, if set; else the\ndirectory specified via -p; else /tmp [deprecated]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mktemp_V0_1_0().translate("wdl", allow_empty_container=True)

