from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Perl_Reversion_V0_1_0 = CommandToolBuilder(tool="perl_reversion", base_command=["perl-reversion"], inputs=[ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="-man", doc=InputDocumentation(doc="view man page for perl-reversion")), ToolInput(tag="in_bump", input_type=Boolean(optional=True), prefix="-bump", doc=InputDocumentation(doc="make the smallest possible increment")), ToolInput(tag="in_bump_revision", input_type=Boolean(optional=True), prefix="-bump-revision", doc=InputDocumentation(doc="increment the specified version component")), ToolInput(tag="in_bump_subversion", input_type=Int(optional=True), prefix="-bump-subversion", doc=InputDocumentation(doc="set the project version number")), ToolInput(tag="in_current", input_type=String(optional=True), prefix="-current", doc=InputDocumentation(doc="specify the current version")), ToolInput(tag="in_normal", input_type=Boolean(optional=True), prefix="-normal", doc=InputDocumentation(doc="print current version in a specific format OR")), ToolInput(tag="in_numi_fy", input_type=Boolean(optional=True), prefix="-numify", doc=InputDocumentation(doc="force versions to be a specific format,")), ToolInput(tag="in_stringify", input_type=Boolean(optional=True), prefix="-stringify", doc=InputDocumentation(doc="with -set or -bump")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="-dryrun", doc=InputDocumentation(doc="just go through the motions, but don't\nactually save files")), ToolInput(tag="in_updated_dot", input_type=String(), position=0, doc=InputDocumentation(doc="'-normal'")), ToolInput(tag="in_version_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Alone, these options control how the current (found) version is")), ToolInput(tag="in_displayed_dot", input_type=String(), position=1, doc=InputDocumentation(doc="With '-bump' or '-set', also update version strings to have the"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Perl_Reversion_V0_1_0().translate("wdl", allow_empty_container=True)

