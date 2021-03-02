from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Hotspot3D_Search_V0_1_0 = CommandToolBuilder(tool="hotspot3d_search", base_command=["hotspot3d", "search"], inputs=[ToolInput(tag="in_prep_dir", input_type=Boolean(optional=True), prefix="--prep-dir", doc=InputDocumentation(doc="HotSpot3D preprocessing results directory\nREQUIRE AT LEAST ONE")), ToolInput(tag="in_maf_file", input_type=Boolean(optional=True), prefix="--maf-file", doc=InputDocumentation(doc="Input MAF file used to search proximity results")), ToolInput(tag="in_site_file", input_type=Boolean(optional=True), prefix="--site-file", doc=InputDocumentation(doc="Protein site file (gene transcript position description)\nOPTIONAL")), ToolInput(tag="in_drug_port_file", input_type=Boolean(optional=True), prefix="--drugport-file", doc=InputDocumentation(doc="DrugPort database parsing results file")), ToolInput(tag="in_output_prefix", input_type=Boolean(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="Prefix of output files, default: 3D_Proximity")), ToolInput(tag="in_skip_silent", input_type=Boolean(optional=True), prefix="--skip-silent", doc=InputDocumentation(doc="skip silent mutations, default: no")), ToolInput(tag="in_missense_only", input_type=Boolean(optional=True), prefix="--missense-only", doc=InputDocumentation(doc="missense mutation only, default: no")), ToolInput(tag="in_p_value_cut_off", input_type=Boolean(optional=True), prefix="--p-value-cutoff", doc=InputDocumentation(doc="p_value cutoff(<=), default: 0.05")), ToolInput(tag="in_three_d_distance_cut_off", input_type=Boolean(optional=True), prefix="--3d-distance-cutoff", doc=InputDocumentation(doc="3D distance cutoff (<=), default: 10")), ToolInput(tag="in_linear_cut_off", input_type=Boolean(optional=True), prefix="--linear-cutoff", doc=InputDocumentation(doc="Linear distance cutoff (>= peptides), default: 0")), ToolInput(tag="in_transcript_id_header", input_type=Boolean(optional=True), prefix="--transcript-id-header", doc=InputDocumentation(doc="MAF file column header for transcript id's, default: transcript_name")), ToolInput(tag="in_amino_acid_header", input_type=Boolean(optional=True), prefix="--amino-acid-header", doc=InputDocumentation(doc="MAF file column header for amino acid changes, default: amino_acid_change"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hotspot3D_Search_V0_1_0().translate("wdl", allow_empty_container=True)

