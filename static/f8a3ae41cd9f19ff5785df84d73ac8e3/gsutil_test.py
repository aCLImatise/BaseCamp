from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Gsutil_Test_V0_1_0 = CommandToolBuilder(tool="gsutil_test", base_command=["gsutil", "test"], inputs=[ToolInput(tag="in_run_tests_uscentral", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Run tests against multi-regional US buckets. By default,\ntests run against regional buckets in us-central1.")), ToolInput(tag="in_output_coverage_information", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Output coverage information.")), ToolInput(tag="in_exit_first_sequential", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Exit on first sequential test failure.")), ToolInput(tag="in_list_available_tests", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="List available tests.")), ToolInput(tag="in_run_most_n", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Run at most N tests in parallel. The default value is 5.")), ToolInput(tag="in_run_tests_s", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Run tests against S3 instead of GS.")), ToolInput(tag="in_only_run_unit", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Only run unit tests."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Test_V0_1_0().translate("wdl", allow_empty_container=True)

