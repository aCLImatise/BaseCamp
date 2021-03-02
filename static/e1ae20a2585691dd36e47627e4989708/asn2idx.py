from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Asn2Idx_V0_1_0 = CommandToolBuilder(tool="asn2idx", base_command=["asn2idx"], inputs=[ToolInput(tag="in_path_to_files", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Path to Files [String]")), ToolInput(tag="in_path_results_optional", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Path for Results [String]  Optional")), ToolInput(tag="in_required_subdirectory_optional", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Required Subdirectory [String]  Optional")), ToolInput(tag="in_file_selection_substring", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="File Selection Substring [String]  Optional\ndefault = .aso")), ToolInput(tag="in_filter_default_gbcongbestgbgssgbhtggbsts", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Filter [String]\ndefault = gbcon,gbest,gbgss,gbhtg,gbsts")), ToolInput(tag="in_bioseqsets_binary_optionaldefault", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Bioseq-sets are Binary [T/F]  Optional\ndefault = F")), ToolInput(tag="in_recurse_optionaldefault_f", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Recurse [T/F]  Optional\ndefault = F\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Asn2Idx_V0_1_0().translate("wdl", allow_empty_container=True)

