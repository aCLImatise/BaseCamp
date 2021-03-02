from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hlaprofiler_Pl_Test_V0_1_0 = CommandToolBuilder(tool="HLAProfiler.pl_test", base_command=["HLAProfiler.pl", "test"], inputs=[ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="|t         Denotes the module to test\nAvailable_tests:\nall\nSequenceFunctions\nMergeDuplicates\nHLATaxonomy\nHLADistractome\nTaxonomyDivisions\nRunKraken\nSimulateReads\nReadCounter\nDetermineProfile\nPairPicker\nAlleleRefiner")), ToolInput(tag="in_kraken_path", input_type=Boolean(optional=True), prefix="-kraken_path", doc=InputDocumentation(doc="|kp base directory of kraken installation. (default:base directory of path returned by `which kraken`)")), ToolInput(tag="in_directory", input_type=Boolean(optional=True), prefix="-directory", doc=InputDocumentation(doc="|td   location of test files. (default:;'.')")), ToolInput(tag="in_output_directory", input_type=Boolean(optional=True), prefix="-output_directory", doc=InputDocumentation(doc="|od    location of temporary output files. (default:;'.')")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hlaprofiler_Pl_Test_V0_1_0().translate("wdl", allow_empty_container=True)

