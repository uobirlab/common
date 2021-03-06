/* Auto-generated by genmsg_cpp for file /home/peter/fuerte_workspace/packages/ptu/ptu_control/msg/instruction.msg */
#ifndef PTU_CONTROL_MESSAGE_INSTRUCTION_H
#define PTU_CONTROL_MESSAGE_INSTRUCTION_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace ptu_control
{
template <class ContainerAllocator>
struct instruction_ {
  typedef instruction_<ContainerAllocator> Type;

  instruction_()
  : pan(0.0)
  , tilt(0.0)
  {
  }

  instruction_(const ContainerAllocator& _alloc)
  : pan(0.0)
  , tilt(0.0)
  {
  }

  typedef float _pan_type;
  float pan;

  typedef float _tilt_type;
  float tilt;


  typedef boost::shared_ptr< ::ptu_control::instruction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ptu_control::instruction_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct instruction
typedef  ::ptu_control::instruction_<std::allocator<void> > instruction;

typedef boost::shared_ptr< ::ptu_control::instruction> instructionPtr;
typedef boost::shared_ptr< ::ptu_control::instruction const> instructionConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::ptu_control::instruction_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::ptu_control::instruction_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace ptu_control

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::ptu_control::instruction_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::ptu_control::instruction_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::ptu_control::instruction_<ContainerAllocator> > {
  static const char* value() 
  {
    return "938e11f380abc0513a5b7367d0f157bf";
  }

  static const char* value(const  ::ptu_control::instruction_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x938e11f380abc051ULL;
  static const uint64_t static_value2 = 0x3a5b7367d0f157bfULL;
};

template<class ContainerAllocator>
struct DataType< ::ptu_control::instruction_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ptu_control/instruction";
  }

  static const char* value(const  ::ptu_control::instruction_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::ptu_control::instruction_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float32 pan\n\
float32 tilt\n\
\n\
";
  }

  static const char* value(const  ::ptu_control::instruction_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::ptu_control::instruction_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::ptu_control::instruction_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.pan);
    stream.next(m.tilt);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct instruction_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ptu_control::instruction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::ptu_control::instruction_<ContainerAllocator> & v) 
  {
    s << indent << "pan: ";
    Printer<float>::stream(s, indent + "  ", v.pan);
    s << indent << "tilt: ";
    Printer<float>::stream(s, indent + "  ", v.tilt);
  }
};


} // namespace message_operations
} // namespace ros

#endif // PTU_CONTROL_MESSAGE_INSTRUCTION_H

