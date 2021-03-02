from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, Directory

Csb_Test_V0_1_0 = CommandToolBuilder(tool="csb_test", base_command=["csb-test"], inputs=[ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Type of tests to load from each namespace\n(default=any)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Verbosity level passed to unittest.TextTestRunner\n(default=1).")), ToolInput(tag="in_update_files", input_type=Boolean(optional=True), prefix="--update-files", doc=InputDocumentation(doc="Force update of the test pickles in\n/usr/local/lib/python3.6/site-packages/csb/test/data")), ToolInput(tag="in_generated_resources", input_type=Directory(optional=True), prefix="--generated-resources", doc=InputDocumentation(doc="Generate, store and load additional test resources in\nthis directory (default=/usr/local/lib/python3.6/site-\npackages/csb/test/data)\n")), ToolInput(tag="in_namespaces", input_type=String(), position=0, doc=InputDocumentation(doc="An optional list of CSB test dotted namespaces, from\nwhich to load tests. '__main__' and '.' are\ninterpreted as the current module. If a namespace ends\nwith an asterisk '.*', all sub-packages will be\nscanned as well. Examples: 'csb.test.cases.bio.*'\n'csb.test.cases.bio.io' 'csb.test.cases.bio.utils'\n'.')"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csb_Test_V0_1_0().translate("wdl", allow_empty_container=True)

