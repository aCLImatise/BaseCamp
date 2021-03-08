from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Planemo_Lint_V0_1_0 = CommandToolBuilder(tool="planemo_lint", base_command=["planemo", "lint"], inputs=[ToolInput(tag="in_report_x_unit", input_type=File(optional=True), prefix="--report_xunit", doc=InputDocumentation(doc="Output an XUnit report, useful for CI")), ToolInput(tag="in_skip", input_type=String(optional=True), prefix="--skip", doc=InputDocumentation(doc="Comma-separated list of lint tests to skip\n(e.g. passing --skip 'citations,xml_order'\nwould skip linting of citations and best-\npractice XML ordering.")), ToolInput(tag="in_no_xsd", input_type=Boolean(optional=True), prefix="--no_xsd", doc=InputDocumentation(doc="Include tool XSD validation in linting")), ToolInput(tag="in_doi", input_type=Boolean(optional=True), prefix="--doi", doc=InputDocumentation(doc="Check validity of DOIs in XML files")), ToolInput(tag="in_cond_a_requirements", input_type=Boolean(optional=True), prefix="--conda_requirements", doc=InputDocumentation(doc="Check tool requirements for availability in\nbest practice Conda channels.")), ToolInput(tag="in_bio_containers", input_type=Boolean(optional=True), prefix="--biocontainers", doc=InputDocumentation(doc="Check best practice BioContainer namespaces\nfor a container definition applicable for\nthis tool.")), ToolInput(tag="in_testing", input_type=String(), position=0, doc=InputDocumentation(doc="--fail_level [warn|error]")), ToolInput(tag="in_process_dot", input_type=String(), position=1, doc=InputDocumentation(doc="-r, --recursive                 Recursively perform command for")), ToolInput(tag="in_subdirectories_dot", input_type=String(), position=2, doc=InputDocumentation(doc="--urls                          Check validity of URLs in XML files"))], outputs=[], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Lint_V0_1_0().translate("wdl")

